.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/gallery3d/data/Path;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 241
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-boolean p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_load_finish:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-boolean p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_load_finish:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-boolean p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_load_finish:Z

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heicIsLoading:Z

    .line 243
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object p1, p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->loadingFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicMovePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicMovePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicMoveRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeicImage(Ljava/lang/String;I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onHeifLoadStatus(Z)V

    :cond_1
    :goto_0
    return-void

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/ItemNotFindListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "PhotoDataAdapter"

    const-string v1, "lyfnew onItemNotFind path = "

    .line 236
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$300(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/ItemNotFindListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/data/Path;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/app/ItemNotFindListener;->onItemNotFind(Lcn/nubia/gallery3d/data/Path;)V

    :cond_2
    return-void

    .line 232
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$CloudImageLoader;->updateCloudImage()V

    return-void

    .line 228
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$200(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    return-void

    .line 213
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 222
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 223
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingFinished()V

    :cond_3
    return-void

    .line 216
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 217
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
