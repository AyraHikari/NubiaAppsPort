.class Lcn/nubia/i/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/i/f;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/i/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/f;


# direct methods
.method constructor <init>(Lcn/nubia/i/f;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/i/f$1;->a:Lcn/nubia/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/i/i;Lcn/nubia/i/i;)I
    .locals 2

    .line 136
    invoke-virtual {p1}, Lcn/nubia/i/i;->i()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/i/i;->i()I

    move-result p1

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lcn/nubia/i/i;

    check-cast p2, Lcn/nubia/i/i;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/i/f$1;->a(Lcn/nubia/i/i;Lcn/nubia/i/i;)I

    move-result p1

    return p1
.end method
