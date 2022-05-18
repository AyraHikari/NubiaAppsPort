.class Lcn/nubia/i/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/g;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/g;


# direct methods
.method constructor <init>(Lcn/nubia/i/g;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 172
    iget-object p1, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->f(Lcn/nubia/i/g;)Lcn/nubia/i/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/f;->d()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 174
    iget-object v0, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {v0, p1}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;Ljava/util/ArrayList;)V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {v2}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedPrisma.get(i).getPrismaId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {v3}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/i/i;

    invoke-virtual {v3}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiltersLoadOp"

    invoke-static {v3, v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {v2}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/i/i;

    invoke-virtual {v2}, Lcn/nubia/i/i;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {v2}, Lcn/nubia/i/g;->d(Lcn/nubia/i/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/i/i;

    invoke-virtual {v2}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\t\t\t\t\t--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/i/g;->a(Lcn/nubia/i/g;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_3
    iget-object p1, p0, Lcn/nubia/i/g$4;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->g(Lcn/nubia/i/g;)V

    return-void
.end method
