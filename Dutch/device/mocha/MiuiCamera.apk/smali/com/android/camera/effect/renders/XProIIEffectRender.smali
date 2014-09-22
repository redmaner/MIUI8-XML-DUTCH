.class public Lcom/android/camera/effect/renders/XProIIEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "XProIIEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvec3 RGBToHSL(vec3 color) \n{ \n    vec3 hsl; \n    float fmin = min(min(color.r, color.g), color.b); \n    float fmax = max(max(color.r, color.g), color.b); \n    float delta = fmax - fmin; \n    hsl.z = (fmax + fmin) / 2.0; \n   if (delta == 0.0) \n    { \n        hsl.x = 0.0; \n       hsl.y = 0.0; \n    } \n   else \n      { \n     if (hsl.z < 0.5) hsl.y = delta / (fmax + fmin); \n       else             hsl.y = delta / (2.0 - fmax - fmin); \n       float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta; \n       float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta; \n       float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta; \n       if (color.r == fmax ) hsl.x = deltaB - deltaG; // Hue \n       else if (color.g == fmax) hsl.x = (1.0 / 3.0) + deltaR - deltaB; // Hue \n       else if (color.b == fmax) hsl.x = (2.0 / 3.0) + deltaG - deltaR; // Hue \n       if (hsl.x < 0.0) hsl.x += 1.0; // Hue \n       else if (hsl.x > 1.0) hsl.x -= 1.0; // Hue \n   } \n   return hsl; \n} \nvec3 GammaCorrection(vec3 color, float gamma) \n{ \n   return vec3(pow(color.r, 1.0 / gamma), pow(color.g, 1.0 / gamma), pow(color.b, 1.0 / gamma)); \n} \nfloat SingleChannelGammaCorrection(float value, float gamma) \n{ \n  return pow(value, 1.0 / gamma); \n} \nvec3 LevelsControlInputRange(vec3 color, float minInput, float maxInput) \n{ \n  return min(max(color - vec3(minInput), vec3(0.0)) / (vec3(maxInput) - vec3(minInput)), vec3(1.0)); \n} \nfloat SingleChannelControlInputRange(float value, float minInput, float maxInput) \n{ \n   return min(max(value - minInput, 0.0) / (maxInput - minInput), 1.0); \n} \nvec3 LevelsControlInput(vec3 color, float minInput, float gamma, float maxInput) \n{ \n   return GammaCorrection(LevelsControlInputRange(color, minInput, maxInput), gamma); \n} \nfloat SingleChannelControlInput(float value, float minInput, float gamma, float maxInput) \n{ \n   return SingleChannelGammaCorrection(SingleChannelControlInputRange(value, minInput, maxInput), gamma); \n} \nvec3 LevelsControlOutputRange(vec3 color, float minOutput, float maxOutput) \n{ \n   return mix(vec3(minOutput), vec3(maxOutput), color); \n} \nfloat SingleLevelsControlOutputRange(float value, float minOutput, float maxOutput) \n{ \n   return mix(minOutput, maxOutput, value); \n} \nvec3 LevelsControl(vec3 color, float minInput, float gamma, float maxInput, float minOutput, float maxOutput) \n{ \n   vec3 tmpColor = LevelsControlInput(color, minInput, gamma, maxInput); \n   return LevelsControlOutputRange(tmpColor, minOutput, maxOutput); \n} \nfloat SingleChannelLevelControl(float value, float minInput, float gamma, float maxInput, float minOutput, float maxOutput) \n{ \n   float tmpValue = SingleChannelControlInput(value, minInput, gamma, maxInput); \n   return SingleLevelsControlOutputRange(tmpValue, minOutput, maxOutput); \n} \nvec3 SaturateAdjustment(vec3 color, float sOffset) \n{ \n  vec3 hsl = RGBToHSL(color); \n  color.r = color.r + (color.r - hsl.z) * sOffset; \n  color.g = color.g + (color.g - hsl.z) * sOffset; \n  color.b = color.b + (color.b - hsl.z) * sOffset; \n  return color; \n} \nvec3 ContrastAndBrightness(vec3 color, float brt, float con) \n{ \n   vec3 tmp = color * brt; \n   tmp.rgb -= 0.5; \n   tmp.rgb *= con; \n   tmp.rgb += 0.5; \n   return tmp; \n} \nvoid main() \n{ \n   vec4 color = texture2D(sTexture, vTexCoord); \n   vec3 levelColor = LevelsControl(color.rgb, 0.0, 0.77, 1.0, 0.0, 1.0); \n   levelColor.r = SingleChannelLevelControl(levelColor.r, 18.0 / 255.0, 1.04, 1.0, 1.0/255.0, 1.0); \n   levelColor.g = SingleChannelLevelControl(levelColor.g, 0.0, 1.07, 1.0, 0.0, 1.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 1.22, 1.0, 32.0 / 255.0, 1.0); \n   vec3 brtAndConColor = ContrastAndBrightness(levelColor, 1.04, 1.14); \n   levelColor = LevelsControl(brtAndConColor, 15.0 / 255.0, 1.03, 243.0 / 255.0, 0.0, 238.0 / 255.0); \n   levelColor.r = SingleChannelLevelControl(levelColor.r, 35.0 / 255.0, 2.0, 243.0 / 255.0, 0.0, 238.0 / 255.0); \n   levelColor.g = SingleChannelLevelControl(levelColor.g, 0.0, 1.07, 1.0, 11.0/255.0, 251.0 / 255.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 0.67, 1.0, 45.0 / 255.0, 238.0 / 255.0); \n   brtAndConColor = ContrastAndBrightness(levelColor, 1.0, 1.14); \n   levelColor.b = SingleChannelLevelControl(brtAndConColor.b, 0.0, 0.93, 1.0, 12.0 / 255.0, 242.0 / 255.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 1.02, 1.0, 12.0 / 255.0, 1.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 0.99, 1.0, 20.0 / 255.0, 1.0); \n   levelColor = levelColor * vec3(252.0 / 255.0, 1.0, 235.0 / 255.0); \n   gl_FragColor = vec4(levelColor, color.a); \n} \n"

    return-object v0
.end method
