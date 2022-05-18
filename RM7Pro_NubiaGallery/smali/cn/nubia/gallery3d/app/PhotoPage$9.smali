.class Lcn/nubia/gallery3d/app/PhotoPage$9;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->doNavigationJob()V
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

    .line 892
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$9;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 896
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$9;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->redrawSeekBarView()V

    return-void
.end method
