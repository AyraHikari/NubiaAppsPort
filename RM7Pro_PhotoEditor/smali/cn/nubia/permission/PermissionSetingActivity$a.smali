.class Lcn/nubia/permission/PermissionSetingActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/permission/PermissionSetingActivity;->c(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/nubia/permission/PermissionSetingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/permission/PermissionSetingActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/permission/PermissionSetingActivity$a;->b:Lcn/nubia/permission/PermissionSetingActivity;

    iput-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/permission/PermissionSetingActivity$a;->a:Landroid/content/Context;

    const v0, 0x7f0e011f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcn/nubia/permission/PermissionSetingActivity$a;->b:Lcn/nubia/permission/PermissionSetingActivity;

    invoke-static {p1}, Lcn/nubia/permission/PermissionSetingActivity;->a(Lcn/nubia/permission/PermissionSetingActivity;)V

    return-void
.end method
