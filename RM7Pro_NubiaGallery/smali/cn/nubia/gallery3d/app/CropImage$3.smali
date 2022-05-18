.class Lcn/nubia/gallery3d/app/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->showSetAsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;

.field final synthetic val$menuToDef:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;Ljava/util/ArrayList;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/CropImage$3;->val$menuToDef:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 301
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->val$menuToDef:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 315
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 316
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$200(Lcn/nubia/gallery3d/app/CropImage;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 310
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 311
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$200(Lcn/nubia/gallery3d/app/CropImage;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CropImage;->access$002(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 305
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/app/CropImage;->access$102(Lcn/nubia/gallery3d/app/CropImage;Z)Z

    .line 306
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$3;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CropImage;->access$200(Lcn/nubia/gallery3d/app/CropImage;)V

    :goto_0
    return-void
.end method
