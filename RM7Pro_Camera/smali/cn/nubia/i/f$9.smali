.class Lcn/nubia/i/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcn/nubia/i/f$9;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/i;)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcn/nubia/i/f$9;->a:Lcn/nubia/i/f;

    invoke-static {p1}, Lcn/nubia/i/f;->b(Lcn/nubia/i/f;)Lcn/nubia/i/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/i/f$a;->notifyDataSetChanged()V

    return-void
.end method
