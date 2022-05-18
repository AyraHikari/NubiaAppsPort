.class Lcn/nubia/video/permission/PremissionSetingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/permission/PremissionSetingActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/permission/PremissionSetingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/permission/PremissionSetingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/permission/PremissionSetingActivity$a;->a:Lcn/nubia/video/permission/PremissionSetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/permission/PremissionSetingActivity$a;->a:Lcn/nubia/video/permission/PremissionSetingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
