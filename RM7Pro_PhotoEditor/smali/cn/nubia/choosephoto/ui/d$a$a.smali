.class Lcn/nubia/choosephoto/ui/d$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/d$a;->c(Lcn/nubia/choosephoto/ui/g;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/choosephoto/ui/g;

.field final synthetic c:Lcn/nubia/choosephoto/ui/d$a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/d$a;Ljava/lang/String;Lcn/nubia/choosephoto/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/d$a$a;->c:Lcn/nubia/choosephoto/ui/d$a;

    iput-object p2, p0, Lcn/nubia/choosephoto/ui/d$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/choosephoto/ui/d$a$a;->b:Lcn/nubia/choosephoto/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcn/nubia/choosephoto/ui/d$a$a;->c:Lcn/nubia/choosephoto/ui/d$a;

    iget-object p1, p1, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object p1, p1, Lcn/nubia/choosephoto/ui/b;->a:Lcn/nubia/choosephoto/ui/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d$a$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/nubia/choosephoto/ui/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d$a$a;->c:Lcn/nubia/choosephoto/ui/d$a;

    iget-object v0, v0, Lcn/nubia/choosephoto/ui/d$a;->c:Lcn/nubia/choosephoto/ui/d;

    iget-object v1, p0, Lcn/nubia/choosephoto/ui/d$a$a;->b:Lcn/nubia/choosephoto/ui/g;

    iget-object v2, p0, Lcn/nubia/choosephoto/ui/d$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcn/nubia/choosephoto/ui/d;->e(Lcn/nubia/choosephoto/ui/d;ZLcn/nubia/choosephoto/ui/g;Ljava/lang/String;)V

    return-void
.end method
