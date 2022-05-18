.class final Lcom/loc/ei$1;
.super Ljava/lang/Object;
.source "AuthUtil.java"

# interfaces
.implements Lcom/loc/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ei;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ei$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/l$b;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ei$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/loc/ei;->a(Landroid/content/Context;Lcom/loc/l$b;)Z

    return-void
.end method
