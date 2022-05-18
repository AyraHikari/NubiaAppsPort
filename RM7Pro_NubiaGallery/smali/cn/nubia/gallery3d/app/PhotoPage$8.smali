.class Lcn/nubia/gallery3d/app/PhotoPage$8;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->updateMenuOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$8;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 728
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$8;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->editAperture()V

    return-void
.end method
