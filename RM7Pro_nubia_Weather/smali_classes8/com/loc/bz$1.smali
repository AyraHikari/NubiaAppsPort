.class final Lcom/loc/bz$1;
.super Ljava/lang/Object;
.source "WifiCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/loc/dd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bz;


# direct methods
.method constructor <init>(Lcom/loc/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bz$1;->a:Lcom/loc/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/loc/dd;

    check-cast p2, Lcom/loc/dd;

    iget v0, p2, Lcom/loc/dd;->c:I

    iget v1, p1, Lcom/loc/dd;->c:I

    sub-int/2addr v0, v1

    return v0
.end method
