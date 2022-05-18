.class Lcn/nubia/camera/am/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/am/a;

.field final synthetic b:Lcn/nubia/camera/am/a$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/am/a$a;Lcn/nubia/camera/am/a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/camera/am/a$a$1;->b:Lcn/nubia/camera/am/a$a;

    iput-object p2, p0, Lcn/nubia/camera/am/a$a$1;->a:Lcn/nubia/camera/am/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/am/a$a$1;->b:Lcn/nubia/camera/am/a$a;

    invoke-static {p1}, Lcn/nubia/camera/am/a$a;->a(Lcn/nubia/camera/am/a$a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/am/a$a$1;->a:Lcn/nubia/camera/am/a;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
