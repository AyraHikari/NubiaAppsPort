.class Lcn/nubia/camera/elefnovideo/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/elefnovideo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$1;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "EleFnoVideoRecordManager"

    const-string v0, "onRecordSoundPlayCompletion"

    .line 104
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g$1;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;)Landroid/media/MediaRecorder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcn/nubia/camera/elefnovideo/g$1;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {p1}, Lcn/nubia/camera/elefnovideo/g;->b(Lcn/nubia/camera/elefnovideo/g;)V

    :cond_0
    return-void
.end method
