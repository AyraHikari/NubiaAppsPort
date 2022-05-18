.class Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;Lcn/nubia/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader;->access$300(Lcn/nubia/gallery3d/app/AlbumSetDataLoader;)Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method
