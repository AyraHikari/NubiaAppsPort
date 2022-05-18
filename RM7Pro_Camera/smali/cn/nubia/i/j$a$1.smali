.class Lcn/nubia/i/j$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/nubia/i/j$a;


# direct methods
.method constructor <init>(Lcn/nubia/i/j$a;Ljava/util/ArrayList;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/i/j$a$1;->b:Lcn/nubia/i/j$a;

    iput-object p2, p0, Lcn/nubia/i/j$a$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcn/nubia/i/j$a$1;->b:Lcn/nubia/i/j$a;

    invoke-static {v0}, Lcn/nubia/i/j$a;->a(Lcn/nubia/i/j$a;)Lcn/nubia/i/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/i/j$a$1;->b:Lcn/nubia/i/j$a;

    invoke-static {v0}, Lcn/nubia/i/j$a;->a(Lcn/nubia/i/j$a;)Lcn/nubia/i/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i/j$a$1;->b:Lcn/nubia/i/j$a;

    iget-object v1, v1, Lcn/nubia/i/j$a;->a:Lcn/nubia/i/j;

    iget-object v2, p0, Lcn/nubia/i/j$a$1;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcn/nubia/i/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
