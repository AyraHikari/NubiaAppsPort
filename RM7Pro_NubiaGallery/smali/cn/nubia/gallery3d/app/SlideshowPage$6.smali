.class Lcn/nubia/gallery3d/app/SlideshowPage$6;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$6;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 339
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$6;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1700(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
