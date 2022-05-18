.class Lcn/nubia/choosephoto/ui/e$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/e$a;->c(Lcn/nubia/choosephoto/ui/g;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/choosephoto/ui/e$a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/e$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ui/e$a$a;->b:Lcn/nubia/choosephoto/ui/e$a;

    iput-object p2, p0, Lcn/nubia/choosephoto/ui/e$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/choosephoto/ui/e$a$a;->b:Lcn/nubia/choosephoto/ui/e$a;

    iget-object p1, p1, Lcn/nubia/choosephoto/ui/e$a;->c:Lcn/nubia/choosephoto/ui/e;

    iget-object p1, p1, Lcn/nubia/choosephoto/ui/b;->a:Lcn/nubia/choosephoto/ui/b$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/e$a$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/nubia/choosephoto/ui/b$a;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
