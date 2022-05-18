.class Lcn/nubia/i/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/g;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/i/a<",
        "Lcn/nubia/i/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/g;


# direct methods
.method constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcn/nubia/i/g$5;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/j;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/i/j;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 260
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/i/i;

    .line 261
    iget-object v0, p0, Lcn/nubia/i/g$5;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->h(Lcn/nubia/i/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcn/nubia/i/g$5;->a:Lcn/nubia/i/g;

    invoke-static {v0}, Lcn/nubia/i/g;->j(Lcn/nubia/i/g;)Lcn/nubia/i/e;

    move-result-object v0

    new-instance v1, Lcn/nubia/i/c;

    iget-object v2, p0, Lcn/nubia/i/g$5;->a:Lcn/nubia/i/g;

    invoke-static {v2}, Lcn/nubia/i/g;->i(Lcn/nubia/i/g;)Lcn/nubia/i/c$a;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/nubia/i/c;-><init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/i/e;->a(Lcn/nubia/i/c;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lcn/nubia/i/g$5;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->k(Lcn/nubia/i/g;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 256
    check-cast p1, Lcn/nubia/i/j;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/i/g$5;->a(Lcn/nubia/i/j;Ljava/util/ArrayList;)V

    return-void
.end method
