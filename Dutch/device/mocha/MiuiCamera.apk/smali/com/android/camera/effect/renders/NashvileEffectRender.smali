.class public Lcom/android/camera/effect/renders/NashvileEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "NashvileEffectRender.java"


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
    const-string v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvec3 GammaCorrection(vec3 color, float gamma) \n{ \n   return vec3(pow(color.r, 1.0 / gamma), pow(color.g, 1.0 / gamma), pow(color.b, 1.0 / gamma)); \n} \nfloat SingleChannelGammaCorrection(float value, float gamma) \n{ \n  return pow(value, 1.0 / gamma); \n} \nvec3 LevelsControlInputRange(vec3 color, float minInput, float maxInput) \n{ \n  return min(max(color - vec3(minInput), vec3(0.0)) / (vec3(maxInput) - vec3(minInput)), vec3(1.0)); \n} \nfloat SingleChannelControlInputRange(float value, float minInput, float maxInput) \n{ \n   return min(max(value - minInput, 0.0) / (maxInput - minInput), 1.0); \n} \nvec3 LevelsControlInput(vec3 color, float minInput, float gamma, float maxInput) \n{ \n   return GammaCorrection(LevelsControlInputRange(color, minInput, maxInput), gamma); \n} \nfloat SingleChannelControlInput(float value, float minInput, float gamma, float maxInput) \n{ \n   return SingleChannelGammaCorrection(SingleChannelControlInputRange(value, minInput, maxInput), gamma); \n} \nvec3 LevelsControlOutputRange(vec3 color, float minOutput, float maxOutput) \n{ \n   return mix(vec3(minOutput), vec3(maxOutput), color); \n} \nfloat SingleLevelsControlOutputRange(float value, float minOutput, float maxOutput) \n{ \n   return mix(minOutput, maxOutput, value); \n} \nvec3 LevelsControl(vec3 color, float minInput, float gamma, float maxInput, float minOutput, float maxOutput) \n{ \n   vec3 tmpColor = LevelsControlInput(color, minInput, gamma, maxInput); \n   return LevelsControlOutputRange(tmpColor, minOutput, maxOutput); \n} \nfloat SingleChannelLevelControl(float value, float minInput, float gamma, float maxInput, float minOutput, float maxOutput) \n{ \n   float tmpValue = SingleChannelControlInput(value, minInput, gamma, maxInput); \n   return SingleLevelsControlOutputRange(tmpValue, minOutput, maxOutput); \n} \nvec3 ContrastAndBrightness(vec3 color, float brt, float con) \n{ \n   vec3 tmp = color * brt; \n   tmp.rgb -= 0.5; \n   tmp.rgb *= con; \n   tmp.rgb += 0.5; \n   return tmp; \n} \nvec3 BlendMultiply(vec3 base, vec3 blend) \n{ \n   return base * blend; \n} \nvoid main() \n{ \n   vec4 color = texture2D(sTexture, vTexCoord); \n   vec3 levelColor = LevelsControl(color.rgb, 0.0, 1.3, 236.0 / 255.0, 2.0 / 255.0, 1.0); \n   levelColor.g = SingleChannelLevelControl(levelColor.g, 0.0, 1.0, 1.0, 49.0 / 255.0, 1.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 1.0, 1.0, 160.0 / 255.0, 1.0); \n   vec3 BrtAndConColor = ContrastAndBrightness(levelColor.rgb, 1.04, 1.18); \n   levelColor.g = SingleChannelLevelControl(levelColor.g, 13.0 / 255.0, 1.0, 1.0, 0.0, 1.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 81.0 / 255.0, 1.0, 1.0, 0.0, 1.0); \n\tBrtAndConColor = ContrastAndBrightness(levelColor.rgb, 0.99, 1.11); \n   levelColor.g = SingleChannelLevelControl(levelColor.g, 0.0, 1.0, 1.0, 6.0 / 255.0, 1.0); \n   levelColor.b = SingleChannelLevelControl(levelColor.b, 0.0, 1.0, 1.0, 6.0 / 255.0, 1.0); \n   gl_FragColor = vec4(BlendMultiply(levelColor.rgb, vec3(247.0 / 255.0, 218.0 / 255.0, 174.0 / 255.0)), color.a); \n} \n"

    return-object v0
.end method
