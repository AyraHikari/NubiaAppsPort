.class Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;
.super Ljava/lang/Object;
.source "WiredlessAndWiredSettingActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredlessAndWiredSettingActivity;->addPlayListener(Landroid/widget/VideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredlessAndWiredSettingActivity;

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredlessAndWiredSettingActivity;Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredlessAndWiredSettingActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;->this$0:Lcn/nubia/touping/WiredlessAndWiredSettingActivity;

    iput-object p2, p0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 169
    new-instance v0, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1$1;-><init>(Lcn/nubia/touping/WiredlessAndWiredSettingActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 178
    return-void
.end method
