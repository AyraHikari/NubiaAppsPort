.class Lcn/nubia/gallery3d/app/CloudPage$4;
.super Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;
.source "CloudPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CloudPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$4;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$4;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2600(Lcn/nubia/gallery3d/app/CloudPage;I)V

    return-void
.end method

.method public onLongTap(I)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$4;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->onLongTap(I)V

    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$4;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->onSingleTapUp(I)V

    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 596
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CloudPage$4;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$2700(Lcn/nubia/gallery3d/app/CloudPage;Z)V

    return-void
.end method
