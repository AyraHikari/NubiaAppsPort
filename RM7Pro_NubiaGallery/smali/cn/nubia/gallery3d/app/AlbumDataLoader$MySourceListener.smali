.class Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;Lcn/nubia/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcn/nubia/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$300(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/AlbumDataLoader$MySourceListener;->this$0:Lcn/nubia/gallery3d/app/AlbumDataLoader;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->access$300(Lcn/nubia/gallery3d/app/AlbumDataLoader;)Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method
