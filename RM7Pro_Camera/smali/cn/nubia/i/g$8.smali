.class Lcn/nubia/i/g$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/g;
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

    .line 309
    iput-object p1, p0, Lcn/nubia/i/g$8;->a:Lcn/nubia/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/i;)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcn/nubia/i/g$8;->a:Lcn/nubia/i/g;

    invoke-static {p1}, Lcn/nubia/i/g;->c(Lcn/nubia/i/g;)Lcn/nubia/i/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/g$a;->notifyDataSetChanged()V

    return-void
.end method
