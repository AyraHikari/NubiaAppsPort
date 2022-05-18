.class Lcn/nubia/m/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/m/c;->b(Landroid/content/Context;Lcn/nubia/m/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/nubia/m/c;


# direct methods
.method constructor <init>(Lcn/nubia/m/c;Landroid/content/Context;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcn/nubia/m/c$1;->b:Lcn/nubia/m/c;

    iput-object p2, p0, Lcn/nubia/m/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcn/nubia/m/c$1;->b:Lcn/nubia/m/c;

    iget-object v1, p0, Lcn/nubia/m/c$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/nubia/m/c;->a(Lcn/nubia/m/c;Landroid/content/Context;)V

    return-void
.end method
