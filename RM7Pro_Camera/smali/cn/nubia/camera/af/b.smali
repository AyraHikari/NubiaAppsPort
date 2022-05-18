.class public Lcn/nubia/camera/af/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/af/b;->a:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/af/b;->b:Ljava/lang/String;

    .line 25
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    .line 27
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    .line 29
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object p2, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    sget-object p3, Lcn/nubia/b/e;->a:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    if-eqz p2, :cond_2

    array-length p3, p2

    if-lez p3, :cond_2

    .line 51
    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    .line 52
    sget-object v1, Lcn/nubia/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcn/nubia/camera/af/b;->g:[Ljava/lang/String;

    .line 59
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 63
    iget-object p1, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    .line 66
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 67
    iget-object p1, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/af/b;->g:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 88
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/af/b;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 120
    :cond_0
    instance-of v1, p1, Lcn/nubia/camera/af/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 121
    check-cast p1, Lcn/nubia/camera/af/b;

    .line 122
    iget-object v1, p1, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/camera/af/b;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 125
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v3, v1

    if-gtz v3, :cond_2

    goto :goto_4

    .line 134
    :cond_2
    iget-object v3, p1, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    if-eqz v3, :cond_8

    array-length v3, v3

    array-length v1, v1

    if-eq v3, v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 138
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    move v3, v2

    .line 140
    :goto_1
    iget-object v4, p1, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 141
    iget-object v5, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v4, v4, v3

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_2
    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v2

    .line 126
    :cond_9
    :goto_4
    iget-object p1, p1, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    if-eqz p1, :cond_a

    array-length p1, p1

    if-lez p1, :cond_a

    return v2

    :cond_a
    return v0

    :cond_b
    return v2
.end method

.method public f()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/af/b;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/af/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/af/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/af/b;->g:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/af/b;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", preferenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/af/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", zoomId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/af/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
