.class Lcn/nubia/i/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/j;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/nubia/i/j;


# direct methods
.method constructor <init>(Lcn/nubia/i/j;Ljava/util/ArrayList;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcn/nubia/i/j$1;->b:Lcn/nubia/i/j;

    iput-object p2, p0, Lcn/nubia/i/j$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcn/nubia/i/j$1;->b:Lcn/nubia/i/j;

    invoke-static {v0}, Lcn/nubia/i/j;->c(Lcn/nubia/i/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/b;

    if-eqz v1, :cond_0

    .line 215
    iget-object v2, p0, Lcn/nubia/i/j$1;->a:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcn/nubia/i/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method
