.class Lcn/nubia/i/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/o;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/o;


# direct methods
.method constructor <init>(Lcn/nubia/i/o;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/nubia/i/o$1;->a:Lcn/nubia/i/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/i/o$1;->a:Lcn/nubia/i/o;

    invoke-static {v0}, Lcn/nubia/i/o;->a(Lcn/nubia/i/o;)Lcn/nubia/i/o$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/i/o$1;->a:Lcn/nubia/i/o;

    invoke-static {v0}, Lcn/nubia/i/o;->a(Lcn/nubia/i/o;)Lcn/nubia/i/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/i/o$a;->b()V

    :cond_0
    return-void
.end method
