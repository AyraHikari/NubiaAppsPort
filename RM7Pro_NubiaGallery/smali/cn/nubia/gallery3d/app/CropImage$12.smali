.class Lcn/nubia/gallery3d/app/CropImage$12;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/CropImage;->createCTA(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CropImage;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$12;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1405
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CropImage$12;->this$0:Lcn/nubia/gallery3d/app/CropImage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/CropImage;->finish()V

    return-void
.end method
