.class Lcn/nubia/choosephoto/ui/a$b;
.super Lcn/nubia/choosephoto/ui/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/ui/a;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/choosephoto/ui/c<",
        "Lcn/nubia/choosephoto/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ui/a;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcn/nubia/choosephoto/ui/c;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/nubia/choosephoto/ui/g;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcn/nubia/choosephoto/a;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/choosephoto/ui/a$b;->c(Lcn/nubia/choosephoto/ui/g;Lcn/nubia/choosephoto/a;I)V

    return-void
.end method

.method public c(Lcn/nubia/choosephoto/ui/g;Lcn/nubia/choosephoto/a;I)V
    .locals 1

    invoke-virtual {p2}, Lcn/nubia/choosephoto/a;->c()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f08001e

    invoke-virtual {p1, v0, p3}, Lcn/nubia/choosephoto/ui/g;->f(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;

    invoke-virtual {p2}, Lcn/nubia/choosephoto/a;->e()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f08001f

    invoke-virtual {p1, v0, p3}, Lcn/nubia/choosephoto/ui/g;->g(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;

    invoke-virtual {p2}, Lcn/nubia/choosephoto/a;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f08001d

    invoke-virtual {p1, p3, p2}, Lcn/nubia/choosephoto/ui/g;->g(ILjava/lang/String;)Lcn/nubia/choosephoto/ui/g;

    return-void
.end method
