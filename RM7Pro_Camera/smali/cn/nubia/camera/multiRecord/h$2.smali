.class Lcn/nubia/camera/multiRecord/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$2;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "MultiRecordManager"

    const-string v0, "onRecordSoundPlayCompletion"

    .line 164
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h$2;->a:Lcn/nubia/camera/multiRecord/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/multiRecord/h;->b(Lcn/nubia/camera/multiRecord/h;Z)Z

    .line 166
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/h$2;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/h;->b(Lcn/nubia/camera/multiRecord/h;)V

    return-void
.end method
