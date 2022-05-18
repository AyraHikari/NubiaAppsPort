.class public Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;

.field private b:Lcn/nubia/algorithm/camera/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ArcsoftPanoramaAlgorithm"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/algorithm/camera/b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->b:Lcn/nubia/algorithm/camera/b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->unInit()Z

    move-result v0

    return v0
.end method

.method public a(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;Z)Z
    .locals 10

    .line 68
    iget v0, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->g:I

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    move v8, v0

    .line 72
    iget-object v0, p0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a:Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;->release()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a:Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;

    .line 76
    :cond_1
    new-instance v2, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;

    iget-object v0, p0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->b:Lcn/nubia/algorithm/camera/b;

    invoke-direct {v2, p1, v0}, Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;-><init>(Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;Lcn/nubia/algorithm/camera/b;)V

    iput-object v2, p0, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->a:Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;

    .line 77
    iget v3, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->a:I

    iget v4, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->b:I

    iget v5, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->f:I

    iget v6, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->d:I

    iget v7, p1, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm$a;->e:I

    move-object v1, p0

    move v9, p2

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/algorithm/camera/ArcsoftPanoramaAlgorithm;->init(Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;IIIIIIZ)Z

    move-result p1

    return p1
.end method

.method native init(Lcn/nubia/algorithm/camera/PanoramaCallbackForJNI;IIIIIIZ)Z
.end method

.method public native process([B)Z
.end method

.method public native setSensorData([FJI)V
.end method

.method public native stitch()V
.end method

.method public native unInit()Z
.end method
