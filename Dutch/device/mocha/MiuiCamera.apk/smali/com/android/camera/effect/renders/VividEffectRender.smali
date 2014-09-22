.class public Lcom/android/camera/effect/renders/VividEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "VividEffectRender.java"


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
    const-string v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat BlendOverlayf(float base, float blend) \n{ \n  return (base < 0.5 ? (2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend))); \n} \nvec3 BlendOverlay(vec3 base, vec3 blend) \n{ \n  return vec3(BlendOverlayf(base.r, blend.r), BlendOverlayf(base.g, blend.g), BlendOverlayf(base.b, blend.b)); \n} \nvec3 HardLight(vec3 base, vec3 blend) \n{ \n  return BlendOverlay(blend, base); \n} \nvoid main() \n{ \n   vec4 color = texture2D(sTexture, vTexCoord); \n   vec3 tmpColor = HardLight(color.rgb, color.rgb); \n   gl_FragColor = vec4(mix(color.rgb, tmpColor, 0.7), color.a); \n} \n"

    return-object v0
.end method
