.class public Lcom/zte/camera/ui/b/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 2

    .line 157
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/zte/camera/ui/b/c/b;->a()Lcom/zte/camera/ui/b/c/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zte/camera/ui/b/c/b;->a(II)I

    move-result p0

    return p0

    .line 160
    :cond_0
    sget-object p1, Lcom/zte/camera/ui/b/c/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSegmentDuration tempateindex error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 7

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Soothing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "Magic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "Fresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "Cute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "Dynamic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    return v5

    :pswitch_0
    return v4

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    return v1

    :pswitch_3
    return v2

    :pswitch_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e2207e1 -> :sswitch_4
        0x203a83 -> :sswitch_3
        0x40fc90e -> :sswitch_2
        0x46ab98d -> :sswitch_1
        0x61d2af5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Lcom/zte/camera/ui/b/c/a$a;
    .locals 1

    .line 22
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 37
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->a:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->f:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->e:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->d:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 29
    :cond_3
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->c:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 27
    :cond_4
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->b:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0

    .line 25
    :cond_5
    sget-object p0, Lcom/zte/camera/ui/b/c/a$a;->a:Lcom/zte/camera/ui/b/c/a$a;

    return-object p0
.end method

.method public static b(I)I
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 78
    sget p0, Lcom/nubia/a/a$g;->g:I

    goto :goto_0

    .line 75
    :cond_0
    sget p0, Lcom/nubia/a/a$g;->k:I

    goto :goto_0

    .line 72
    :cond_1
    sget p0, Lcom/nubia/a/a$g;->j:I

    goto :goto_0

    .line 69
    :cond_2
    sget p0, Lcom/nubia/a/a$g;->h:I

    goto :goto_0

    .line 66
    :cond_3
    sget p0, Lcom/nubia/a/a$g;->i:I

    goto :goto_0

    .line 63
    :cond_4
    sget p0, Lcom/nubia/a/a$g;->l:I

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 0

    .line 183
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->a(Ljava/lang/String;)I

    move-result p0

    .line 184
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->f(I)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 104
    sget p0, Lcom/nubia/a/a$g;->a:I

    goto :goto_0

    .line 101
    :cond_0
    sget p0, Lcom/nubia/a/a$g;->e:I

    goto :goto_0

    .line 98
    :cond_1
    sget p0, Lcom/nubia/a/a$g;->d:I

    goto :goto_0

    .line 95
    :cond_2
    sget p0, Lcom/nubia/a/a$g;->b:I

    goto :goto_0

    .line 92
    :cond_3
    sget p0, Lcom/nubia/a/a$g;->c:I

    goto :goto_0

    .line 89
    :cond_4
    sget p0, Lcom/nubia/a/a$g;->f:I

    :goto_0
    return p0
.end method

.method public static d(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x6

    if-lt p0, v0, :cond_1

    const/4 p0, 0x5

    :cond_1
    return p0
.end method

.method public static e(I)I
    .locals 3

    .line 147
    invoke-static {p0}, Lcom/zte/camera/ui/b/c/d;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/zte/camera/ui/b/c/b;->a()Lcom/zte/camera/ui/b/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/camera/ui/b/c/b;->a(I)I

    move-result p0

    return p0

    .line 150
    :cond_0
    sget-object v0, Lcom/zte/camera/ui/b/c/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTemaplateTotalDuration index error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static f(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 200
    sget p0, Lcom/nubia/a/a$a;->a:I

    return p0

    .line 198
    :cond_0
    sget p0, Lcom/nubia/a/a$a;->e:I

    return p0

    .line 196
    :cond_1
    sget p0, Lcom/nubia/a/a$a;->d:I

    return p0

    .line 194
    :cond_2
    sget p0, Lcom/nubia/a/a$a;->b:I

    return p0

    .line 192
    :cond_3
    sget p0, Lcom/nubia/a/a$a;->c:I

    return p0

    .line 190
    :cond_4
    sget p0, Lcom/nubia/a/a$a;->f:I

    return p0
.end method

.method public static g(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
