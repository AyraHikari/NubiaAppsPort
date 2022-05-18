.class final Lcom/loc/at$b;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/loc/at$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/loc/at$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/at$b;->a:Ljava/util/Vector;

    new-instance v0, Lcom/loc/at$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loc/at$c;-><init>(B)V

    iput-object v0, p0, Lcom/loc/at$b;->b:Lcom/loc/at$c;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/at$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/at$c;
    .locals 1

    iget-object v0, p0, Lcom/loc/at$b;->b:Lcom/loc/at$c;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/loc/at$c;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/at$b;->b:Lcom/loc/at$c;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/loc/at$b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/loc/at$b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/at$c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/loc/at$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/loc/at$c;

    invoke-direct {v0, v2}, Lcom/loc/at$c;-><init>(B)V

    invoke-virtual {v0, p1}, Lcom/loc/at$c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/at$b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/at$b;->b:Lcom/loc/at$c;

    invoke-virtual {v0, p1}, Lcom/loc/at$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
