.class Lcn/nubia/gallery3d/app/SlideshowPage$12;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->onCreateActionBar(Landroid/view/Menu;)Z
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

    .line 1161
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$12;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1164
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$12;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->onBackPressed()V

    return-void
.end method
