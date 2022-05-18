.class Lcn/nubia/m/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/m/c;->a([B[BLjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/nubia/m/c;


# direct methods
.method constructor <init>(Lcn/nubia/m/c;[B[BLjava/lang/String;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcn/nubia/m/c$3;->d:Lcn/nubia/m/c;

    iput-object p2, p0, Lcn/nubia/m/c$3;->a:[B

    iput-object p3, p0, Lcn/nubia/m/c$3;->b:[B

    iput-object p4, p0, Lcn/nubia/m/c$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 942
    iget-object v0, p0, Lcn/nubia/m/c$3;->d:Lcn/nubia/m/c;

    invoke-static {v0}, Lcn/nubia/m/c;->a(Lcn/nubia/m/c;)Lcn/nubia/m/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcn/nubia/m/c$3;->d:Lcn/nubia/m/c;

    invoke-static {v0}, Lcn/nubia/m/c;->a(Lcn/nubia/m/c;)Lcn/nubia/m/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/m/c$3;->a:[B

    iget-object v2, p0, Lcn/nubia/m/c$3;->b:[B

    iget-object v3, p0, Lcn/nubia/m/c$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/m/c$b;->a([B[BLjava/lang/String;)V

    :cond_0
    return-void
.end method
