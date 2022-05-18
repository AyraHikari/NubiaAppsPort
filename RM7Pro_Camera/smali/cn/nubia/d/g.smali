.class Lcn/nubia/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/nubia/d/a;


# direct methods
.method constructor <init>(Lcn/nubia/d/a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/d/g;->a:Lcn/nubia/d/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Lcn/nubia/d/c;
    .locals 5

    .line 46
    iget-object v0, p0, Lcn/nubia/d/g;->a:Lcn/nubia/d/a;

    invoke-static {p1, v0}, Lcn/nubia/d/f;->a(Ljava/io/InputStream;Lcn/nubia/d/a;)Lcn/nubia/d/f;

    move-result-object p1

    .line 47
    new-instance v0, Lcn/nubia/d/c;

    invoke-virtual {p1}, Lcn/nubia/d/f;->m()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/d/c;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p1}, Lcn/nubia/d/f;->a()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    const-string v3, "ExifReader"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/d/f;->f()I

    move-result v1

    new-array v2, v1, [B

    .line 81
    invoke-virtual {p1, v2}, Lcn/nubia/d/f;->a([B)I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 82
    invoke-virtual {p1}, Lcn/nubia/d/f;->e()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/c;->a(I[B)V

    goto :goto_1

    :cond_1
    const-string v1, "Failed to read the strip bytes"

    .line 84
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/d/f;->g()I

    move-result v1

    new-array v2, v1, [B

    .line 73
    invoke-virtual {p1, v2}, Lcn/nubia/d/f;->a([B)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Lcn/nubia/d/c;->a([B)V

    goto :goto_1

    :cond_3
    const-string v1, "Failed to read the compressed thumbnail"

    .line 76
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/d/f;->c()Lcn/nubia/d/h;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcn/nubia/d/h;->c()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 67
    invoke-virtual {p1, v1}, Lcn/nubia/d/f;->b(Lcn/nubia/d/h;)V

    .line 69
    :cond_5
    invoke-virtual {v1}, Lcn/nubia/d/h;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/d/f;->c()Lcn/nubia/d/h;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcn/nubia/d/h;->f()Z

    move-result v2

    if-nez v2, :cond_7

    .line 59
    invoke-virtual {p1, v1}, Lcn/nubia/d/f;->a(Lcn/nubia/d/h;)V

    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/d/h;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    goto :goto_1

    .line 54
    :cond_8
    new-instance v1, Lcn/nubia/d/i;

    invoke-virtual {p1}, Lcn/nubia/d/f;->d()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/nubia/d/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/nubia/d/c;->a(Lcn/nubia/d/i;)V

    .line 88
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/d/f;->a()I

    move-result v1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
