.class public Lc/c/a/d/c/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lc/c/a/d/c/i;

.field private d:Lc/c/a/d/c/f;


# direct methods
.method protected constructor <init>(Lc/c/a/d/c/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iput-object p2, p0, Lc/c/a/d/c/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    invoke-virtual {v0}, Lc/c/a/d/c/f;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lc/c/a/d/c/c;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lc/c/a/d/c/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc/c/a/d/c/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "*"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/c/a/d/c/i;->d()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    invoke-virtual {v1}, Lc/c/a/d/c/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lc/c/a/d/c/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->c:Lc/c/a/d/c/i;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lc/c/a/d/c/i;->d()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, " HAVING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->c:Lc/c/a/d/c/i;

    invoke-virtual {v1}, Lc/c/a/d/c/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    :goto_3
    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget-object v1, v1, Lc/c/a/d/c/f;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/d/c/f$a;

    invoke-virtual {v1}, Lc/c/a/d/c/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget v1, v1, Lc/c/a/d/c/f;->e:I

    if-lez v1, :cond_6

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget v1, v1, Lc/c/a/d/c/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/c/c;->d:Lc/c/a/d/c/f;

    iget v1, v1, Lc/c/a/d/c/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
