.class Lcn/nubia/gallery3d/app/PhotoPage$24;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->removeMarkFlags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;

.field final synthetic val$ids:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 2561
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$24;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoPage$24;->val$ids:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 2561
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage$24;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1

    .line 2564
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$24;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$5000(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$24;->val$ids:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/FavorHelper;->bulkSetUnFavor(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
