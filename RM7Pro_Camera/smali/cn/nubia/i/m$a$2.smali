.class Lcn/nubia/i/m$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/m$a;->a()Lcn/nubia/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/m;

.field final synthetic b:Lcn/nubia/i/m$a;


# direct methods
.method constructor <init>(Lcn/nubia/i/m$a;Lcn/nubia/i/m;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/i/m$a$2;->b:Lcn/nubia/i/m$a;

    iput-object p2, p0, Lcn/nubia/i/m$a$2;->a:Lcn/nubia/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcn/nubia/i/m$a$2;->b:Lcn/nubia/i/m$a;

    invoke-static {p1}, Lcn/nubia/i/m$a;->b(Lcn/nubia/i/m$a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/i/m$a$2;->a:Lcn/nubia/i/m;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
