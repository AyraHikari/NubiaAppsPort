.class Lcn/nubia/camera/clone/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/i;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/clone/i$1;->a:Lcn/nubia/camera/clone/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcn/nubia/camera/clone/i$1;->a:Lcn/nubia/camera/clone/i;

    invoke-static {p1}, Lcn/nubia/camera/clone/i;->a(Lcn/nubia/camera/clone/i;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
