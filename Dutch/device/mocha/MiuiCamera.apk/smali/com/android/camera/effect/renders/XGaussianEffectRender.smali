.class public Lcom/android/camera/effect/renders/XGaussianEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "XGaussianEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nvec4 gassian(vec2 step) { \n    vec3 sum; \n\t float a[6]; \n    //a[0] = 0.001; a[1] = 0.01; a[2] = 0.044; a[3] = 0.116; a[4] = 0.205; a[5] = 0.246; \n    //a[0] = 0.0355; a[1] = 0.0585; a[2] = 0.0863; a[3] = 0.1139; a[4] = 0.1346; a[5] = 0.1423; \n    //a[0] = 0.091; a[1] = 0.091; a[2] = 0.091; a[3] = 0.091; a[4] = 0.091; a[5] = 0.091; \n    a[0] = 0.0549; a[1] = 0.0727; a[2] = 0.0905; a[3] = 0.1058; a[4] = 0.1162; a[5] = 0.1199; \n    sum  = texture2D(sTexture, vTexCoord - 5.0 * step).rgb * a[0]; \n    sum += texture2D(sTexture, vTexCoord - 4.0 * step).rgb * a[1]; \n    sum += texture2D(sTexture, vTexCoord - 3.0 * step).rgb * a[2]; \n    sum += texture2D(sTexture, vTexCoord - 2.0 * step).rgb * a[3]; \n    sum += texture2D(sTexture, vTexCoord - step).rgb * a[4]; \n    sum += texture2D(sTexture, vTexCoord).rgb * a[5]; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a[4]; \n    sum += texture2D(sTexture, vTexCoord + 2.0 * step).rgb * a[3]; \n    sum += texture2D(sTexture, vTexCoord + 3.0 * step).rgb * a[2]; \n    sum += texture2D(sTexture, vTexCoord + 4.0 * step).rgb * a[1]; \n    sum += texture2D(sTexture, vTexCoord + 5.0 * step).rgb * a[0]; \n    return vec4(sum, 1.0); \n} \nvoid main() { \n    float w = (uEffectRect.z - uEffectRect.x)/2.0; \n    float h = (uEffectRect.w - uEffectRect.y)/2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0;\n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float ratio =  0.0; \n    bool inRange = true;\n    if(w > 2.0*h) { \n        if(isInRectF(vTexCoord, vec4(cx-w,cy-h,cx+w,cy+h))) { \n             ratio = abs(vTexCoord.y - cy)/h; \n        } else {\n             float d1 = distance(vTexCoord, vec2(cx-w, cy));\n             float d2 = distance(vTexCoord, vec2(cx+w, cy));\n             if (d1 < h) {\n                 ratio = d1/h; \n             } else if (d2 < h) { \n                 ratio = d2/h; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else if (h > 2.0*w) {\n        if(isInRectF(vTexCoord, vec4(cx-w,cy-h,cx+w,cy+h))) { \n             ratio = abs(vTexCoord.x - cx)/w; \n        } else { \n             float d1 = distance(vTexCoord, vec2(cy-h, cx));\n             float d2 = distance(vTexCoord, vec2(cy+h, cx));\n             if (d1 < w) {\n                 ratio = d1/w; \n             } else if (d2 < w) {\n                 ratio = d2/w; \n             } else { \n                 inRange = false; \n                 ratio = 0.0;\n             }\n        } \n    } else {\n        float d = distance(vTexCoord, vec2(cx,cy)); \n        float r = max(w,h); \n        if (d < r) {\n            ratio = d/r; \n        } else { \n            inRange = false; \n            ratio = 0.0; \n        } \n    }\n    if (ratio < 0.25 && uInvertRect == 0) { \n       ratio = 0.0; \n    } \n    if (inRange) { \n        if(uInvertRect != 0) {\n            gl_FragColor = gassian(vec2(2.0*uStep.x*(ratio-1.0)*(ratio-1.0), 0.0)); \n        } else { \n            gl_FragColor = gassian(vec2(2.0*uStep.x*ratio*ratio*ratio, 0.0)); \n        } \n    } else { \n        if (uInvertRect != 0) { \n            gl_FragColor = texture2D(sTexture, vTexCoord); \n        } else { \n            gl_FragColor = gassian(vec2(2.0*uStep.x, 0.0)); \n        } \n    } \n} \n"

    return-object v0
.end method
