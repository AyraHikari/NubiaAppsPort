.class Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/improve/rename/MediaItemRename$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 2416
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V
    .locals 0

    .line 2416
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public renameDone()V
    .locals 1

    .line 2421
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$RenameListener;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4900(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method
