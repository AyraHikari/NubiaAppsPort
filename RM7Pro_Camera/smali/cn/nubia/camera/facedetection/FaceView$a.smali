.class Lcn/nubia/camera/facedetection/FaceView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/facedetection/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/facedetection/FaceView;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/facedetection/FaceView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/facedetection/FaceView$a;->a:Lcn/nubia/camera/facedetection/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/facedetection/FaceView;Lcn/nubia/camera/facedetection/FaceView$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/camera/facedetection/FaceView$a;-><init>(Lcn/nubia/camera/facedetection/FaceView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 121
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/facedetection/FaceView$a;->a:Lcn/nubia/camera/facedetection/FaceView;

    invoke-static {p1}, Lcn/nubia/camera/facedetection/FaceView;->a(Lcn/nubia/camera/facedetection/FaceView;)V

    :goto_0
    return-void
.end method
