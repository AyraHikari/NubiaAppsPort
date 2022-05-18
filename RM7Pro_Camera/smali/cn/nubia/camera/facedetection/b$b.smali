.class final Lcn/nubia/camera/facedetection/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/facedetection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/facedetection/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/facedetection/b;Landroid/os/Looper;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/nubia/camera/facedetection/b$b;->a:Lcn/nubia/camera/facedetection/b;

    .line 185
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage]msg.what ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmileShot"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/facedetection/b$b;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {p1}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/facedetection/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/facedetection/b$b;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {p1}, Lcn/nubia/camera/facedetection/b;->b(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/facedetection/b$b;->a:Lcn/nubia/camera/facedetection/b;

    invoke-static {p1}, Lcn/nubia/camera/facedetection/b;->b(Lcn/nubia/camera/facedetection/b;)Lcn/nubia/camera/facedetection/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/facedetection/b$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method
