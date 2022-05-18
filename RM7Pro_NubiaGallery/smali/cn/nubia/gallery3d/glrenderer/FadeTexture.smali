.class public abstract Lcn/nubia/gallery3d/glrenderer/FadeTexture;
.super Ljava/lang/Object;
.source "FadeTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/Texture;


# static fields
.field public static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "FadeTexture"


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mIsOpaque:Z

.field private final mStartTime:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mWidth:I

    .line 38
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mHeight:I

    .line 39
    iput-boolean p3, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    .line 40
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    return-void
.end method

.method private now()J
    .locals 2

    .line 79
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    .line 46
    iget v4, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mHeight:I

    return v0
.end method

.method protected getRatio()F
    .locals 4

    .line 74
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    .line 75
    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 56
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcn/nubia/gallery3d/glrenderer/FadeTexture;->mIsOpaque:Z

    return v0
.end method
