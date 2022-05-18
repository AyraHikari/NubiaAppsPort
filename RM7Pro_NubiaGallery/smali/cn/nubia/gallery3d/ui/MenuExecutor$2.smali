.class Lcn/nubia/gallery3d/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor;->showUnsupportedConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$2;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 908
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$2;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 909
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$2;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 910
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$2;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$502(Lcn/nubia/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
