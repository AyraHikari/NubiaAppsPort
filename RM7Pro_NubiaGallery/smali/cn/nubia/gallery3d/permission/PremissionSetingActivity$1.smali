.class Lcn/nubia/gallery3d/permission/PremissionSetingActivity$1;
.super Ljava/lang/Object;
.source "PremissionSetingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->showPressionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/permission/PremissionSetingActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$1;->this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$1;->this$0:Lcn/nubia/gallery3d/permission/PremissionSetingActivity;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->finish()V

    return-void
.end method
