.class public abstract Lcn/nubia/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/c/a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/c/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcn/nubia/c/a;->c:Z

    return-void
.end method

.method private d(F)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcn/nubia/c/a;->c:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcn/nubia/c/a;->a(F)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcn/nubia/c/a;->c:Z

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private e(F)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/c/a$a;

    .line 65
    invoke-interface {v1, p1}, Lcn/nubia/c/a$a;->a(F)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcn/nubia/c/a;->a(IF)V

    return-void
.end method

.method protected a(IF)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 40
    iget-object v1, p0, Lcn/nubia/c/a;->a:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/c/a$a;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/c/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/nubia/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected abstract b(F)F
.end method

.method public c(F)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/c/a;->d(F)V

    .line 72
    invoke-virtual {p0, p1}, Lcn/nubia/c/a;->b(F)F

    move-result p1

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/c/a;->e(F)V

    return-void
.end method
