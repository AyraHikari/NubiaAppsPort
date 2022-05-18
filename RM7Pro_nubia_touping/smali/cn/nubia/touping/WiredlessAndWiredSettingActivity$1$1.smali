.class Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1$1;
.super Ljava/lang/Object;
.source "WiredlessAndWiredSettingActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;

    .prologue
    .line 169
    iput-object p1, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1$1;->this$1:Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1$1;->this$1:Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;

    iget-object v0, v0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 175
    :cond_0
    return v1
.end method
