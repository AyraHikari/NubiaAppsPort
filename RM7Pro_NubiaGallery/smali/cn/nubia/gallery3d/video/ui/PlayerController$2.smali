.class Lcn/nubia/gallery3d/video/ui/PlayerController$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/ui/PlayerController;->setMediaNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyMediaState(I)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$202(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    .line 201
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$1000(Lcn/nubia/gallery3d/video/ui/PlayerController;)I

    move-result v3

    invoke-static {p1, v3}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$1100(Lcn/nubia/gallery3d/video/ui/PlayerController;I)V

    .line 202
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->isNubiaVpFile()Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->needDrawPlayIcon(Z)V

    .line 205
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    .line 206
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 207
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    .line 208
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    goto/16 :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$202(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    .line 178
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    .line 179
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    goto/16 :goto_0

    .line 182
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    sget-object v3, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawVideo:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->setViewShowMode(Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;)V

    .line 183
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->needDrawPlayIcon(Z)V

    .line 184
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$202(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    .line 185
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$900(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$800(Lcn/nubia/gallery3d/video/ui/PlayerController;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    .line 187
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    goto/16 :goto_0

    .line 190
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/video/VideoPlayer;->getDuration()I

    move-result v3

    invoke-static {p1, v3}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$1002(Lcn/nubia/gallery3d/video/ui/PlayerController;I)I

    .line 191
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setInvalid(Z)V

    .line 192
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$1000(Lcn/nubia/gallery3d/video/ui/PlayerController;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setMax(I)V

    .line 193
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    .line 194
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$600(Lcn/nubia/gallery3d/video/ui/PlayerController;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 195
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    .line 196
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$602(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    goto/16 :goto_0

    .line 153
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$202(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    .line 154
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setInvalid(Z)V

    .line 155
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    .line 156
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->needDrawPlayIcon(Z)V

    .line 157
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    sget-object v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->setViewShowMode(Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;)V

    .line 158
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    goto :goto_0

    .line 161
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setInvalid(Z)V

    .line 162
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    .line 163
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getVideoType()I

    move-result p1

    .line 164
    iget-object v3, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v3}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/video/VideoPlayer;->getVideoWidth()I

    move-result v3

    .line 165
    iget-object v4, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v4}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/gallery3d/video/VideoPlayer;->getVideoHeight()I

    move-result v4

    .line 166
    iget-object v5, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v5}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/gallery3d/video/VideoPlayer;->release()V

    if-eq p1, v1, :cond_7

    mul-int/2addr v3, v4

    const p1, 0x1fe000

    if-gt v3, p1, :cond_7

    const-string p1, "PlayerController"

    const-string v0, "try to ffmpeg"

    .line 168
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$602(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z

    .line 170
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->getSurfaceTextureScreenNail()Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->changeDecoder(ILcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    goto :goto_0

    .line 172
    :cond_7
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$700(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1001b5

    invoke-static {p1, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    .line 173
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController$2;->this$0:Lcn/nubia/gallery3d/video/ui/PlayerController;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;->VideoStatusChanged(I)V

    :cond_8
    :goto_0
    return-void
.end method
