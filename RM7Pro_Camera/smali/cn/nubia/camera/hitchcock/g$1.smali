.class Lcn/nubia/camera/hitchcock/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/hitchcock/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/g;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g$1;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "HitchcockRecordManager"

    const-string v0, "onRecordSoundPlayCompletion"

    .line 109
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g$1;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-static {p1}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/r/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/g$1;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-static {p1}, Lcn/nubia/camera/hitchcock/g;->b(Lcn/nubia/camera/hitchcock/g;)V

    :cond_0
    return-void
.end method
