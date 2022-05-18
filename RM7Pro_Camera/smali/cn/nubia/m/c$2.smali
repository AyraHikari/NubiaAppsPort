.class Lcn/nubia/m/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/m/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/m/c;


# direct methods
.method constructor <init>(Lcn/nubia/m/c;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcn/nubia/m/c$2;->a:Lcn/nubia/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcn/nubia/m/c$2;->a:Lcn/nubia/m/c;

    invoke-static {v0}, Lcn/nubia/m/c;->a(Lcn/nubia/m/c;)Lcn/nubia/m/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcn/nubia/m/c$2;->a:Lcn/nubia/m/c;

    invoke-static {v0}, Lcn/nubia/m/c;->a(Lcn/nubia/m/c;)Lcn/nubia/m/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/m/c$b;->a()V

    :cond_0
    return-void
.end method
