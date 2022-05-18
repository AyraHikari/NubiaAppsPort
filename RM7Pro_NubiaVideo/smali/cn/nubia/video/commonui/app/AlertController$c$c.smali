.class Lcn/nubia/video/commonui/app/AlertController$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/commonui/app/AlertController$c;->b(Lcn/nubia/video/commonui/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/commonui/app/AlertController;

.field final synthetic b:Lcn/nubia/video/commonui/app/AlertController$c;


# direct methods
.method constructor <init>(Lcn/nubia/video/commonui/app/AlertController$c;Lcn/nubia/video/commonui/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->b:Lcn/nubia/video/commonui/app/AlertController$c;

    iput-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->a:Lcn/nubia/video/commonui/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->b:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-object p1, p1, Lcn/nubia/video/commonui/app/AlertController$c;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->a:Lcn/nubia/video/commonui/app/AlertController;

    invoke-static {p2}, Lcn/nubia/video/commonui/app/AlertController;->o(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->b:Lcn/nubia/video/commonui/app/AlertController$c;

    iget-boolean p1, p1, Lcn/nubia/video/commonui/app/AlertController$c;->E:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/commonui/app/AlertController$c$c;->a:Lcn/nubia/video/commonui/app/AlertController;

    invoke-static {p1}, Lcn/nubia/video/commonui/app/AlertController;->o(Lcn/nubia/video/commonui/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
