.class Lcn/nubia/camera/r/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/i;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/r/i$1;->a:Lcn/nubia/camera/r/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "FreezeVideoRecordManager"

    const-string v0, "onRecordSoundPlayCompletion"

    .line 103
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcn/nubia/camera/r/i$1;->a:Lcn/nubia/camera/r/i;

    invoke-static {p1}, Lcn/nubia/camera/r/i;->a(Lcn/nubia/camera/r/i;)Lcn/nubia/camera/r/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/r/i$1;->a:Lcn/nubia/camera/r/i;

    invoke-static {p1}, Lcn/nubia/camera/r/i;->b(Lcn/nubia/camera/r/i;)V

    :cond_0
    return-void
.end method
