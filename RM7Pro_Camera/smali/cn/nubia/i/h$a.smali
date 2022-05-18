.class Lcn/nubia/i/h$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/h;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/i/h;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/i/h$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/i/h;Lcn/nubia/i/h$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/i/h$a;-><init>(Lcn/nubia/i/h;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcn/nubia/i/h$a;->b:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/i/h$a;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListAllDownload"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcn/nubia/i/h$a;->b:Z

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 57
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PrismaLeak] thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/i/h$a;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ListAllDownload"

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;)Lcn/nubia/i/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/i/j;->c()V

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v6, v1

    move v5, v4

    .line 64
    :cond_0
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->b(Lcn/nubia/i/h;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "page_size"

    const-string v9, "5"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->b(Lcn/nubia/i/h;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v9}, Lcn/nubia/i/h;->c(Lcn/nubia/i/h;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "page_no"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->b(Lcn/nubia/i/h;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/i/p;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestParam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "https://photofilter-api.nubia.com/photo_filter/list_all"

    .line 68
    invoke-static {v8, v7}, Lcn/nubia/i/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    iget-boolean v8, v0, Lcn/nubia/i/h$a;->b:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    goto/16 :goto_8

    :cond_1
    if-eqz v7, :cond_12

    .line 73
    iget-object v6, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v6}, Lcn/nubia/i/h;->d(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x5

    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->c(Lcn/nubia/i/h;)I

    move-result v10

    invoke-static {v7, v6, v8, v10}, Lcn/nubia/i/k;->a(Ljava/lang/String;Ljava/util/ArrayList;II)Lcn/nubia/i/k;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 74
    iget v7, v6, Lcn/nubia/i/k;->d:I

    if-nez v7, :cond_10

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "photofilter num: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcn/nubia/i/k;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v7, v6, Lcn/nubia/i/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 77
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 78
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_3
    iget-object v7, v6, Lcn/nubia/i/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/i/k$a;

    .line 82
    iget-boolean v10, v0, Lcn/nubia/i/h$a;->b:Z

    if-eqz v10, :cond_4

    goto/16 :goto_7

    .line 86
    :cond_4
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_6

    move v10, v9

    move v12, v11

    .line 87
    :goto_2
    iget-object v13, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v13}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_7

    .line 88
    iget-object v13, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v13}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/i/i;

    invoke-virtual {v13}, Lcn/nubia/i/i;->i()I

    move-result v13

    iget v14, v8, Lcn/nubia/i/k$a;->e:I

    if-ne v13, v14, :cond_5

    move v12, v10

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move v12, v11

    .line 93
    :cond_7
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_9

    if-ne v12, v11, :cond_8

    goto :goto_3

    :cond_8
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/i/i;

    goto :goto_4

    :cond_9
    :goto_3
    move-object v10, v1

    :goto_4
    if-eqz v10, :cond_e

    .line 95
    iget-object v11, v8, Lcn/nubia/i/k$a;->b:Ljava/lang/String;

    invoke-virtual {v10}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v8, Lcn/nubia/i/k$a;->c:Ljava/lang/String;

    .line 96
    invoke-virtual {v10}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v11, v11, Lcn/nubia/i/k$a$b;->e:Ljava/lang/String;

    .line 97
    invoke-virtual {v10}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v11, v11, Lcn/nubia/i/k$a$b;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {v10}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 99
    :cond_a
    invoke-virtual {v10}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v11

    .line 100
    iget-object v12, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v12, v12, Lcn/nubia/i/k$a$b;->e:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcn/nubia/i/i;->c(Ljava/lang/String;)V

    .line 101
    iget-object v12, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v12, v12, Lcn/nubia/i/k$a$b;->e:Ljava/lang/String;

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 102
    invoke-virtual {v10}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 103
    iget-object v11, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v11}, Lcn/nubia/i/h;->g(Lcn/nubia/i/h;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcn/nubia/i/p;->a(Ljava/lang/String;Lcn/nubia/i/i;)V

    .line 104
    invoke-virtual {v10}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 105
    invoke-virtual {v10}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/i/i;->a(Landroid/graphics/Bitmap;)V

    :cond_b
    const-string v11, "getIconBitmapFromUrl"

    .line 107
    invoke-static {v3, v11}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v11, "uri not eqaul"

    .line 109
    invoke-static {v3, v11}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_d
    iget-object v11, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v11, v11, Lcn/nubia/i/k$a$b;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcn/nubia/i/i;->d(Ljava/lang/String;)V

    .line 112
    iget-object v11, v8, Lcn/nubia/i/k$a;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcn/nubia/i/i;->f(Ljava/lang/String;)V

    .line 113
    iget-object v8, v8, Lcn/nubia/i/k$a;->c:Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcn/nubia/i/i;->e(Ljava/lang/String;)V

    .line 114
    iget-object v8, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v8}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;)Lcn/nubia/i/j;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcn/nubia/i/j;->b(Lcn/nubia/i/i;)V

    goto :goto_5

    .line 117
    :cond_e
    new-instance v10, Lcn/nubia/i/i;

    iget v12, v8, Lcn/nubia/i/k$a;->e:I

    iget-object v13, v8, Lcn/nubia/i/k$a;->b:Ljava/lang/String;

    iget-object v14, v8, Lcn/nubia/i/k$a;->c:Ljava/lang/String;

    iget-object v11, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v15, v11, Lcn/nubia/i/k$a$b;->e:Ljava/lang/String;

    iget-object v8, v8, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    iget-object v8, v8, Lcn/nubia/i/k$a$b;->a:Ljava/lang/String;

    move-object v11, v10

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcn/nubia/i/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v8, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v8}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;)Lcn/nubia/i/j;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcn/nubia/i/j;->a(Lcn/nubia/i/i;)V

    .line 125
    :cond_f
    :goto_5
    iget-object v8, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v8}, Lcn/nubia/i/h;->h(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    if-nez v6, :cond_11

    const-string v5, "parse response fail"

    .line 130
    invoke-static {v3, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 132
    :cond_11
    iget-object v5, v6, Lcn/nubia/i/k;->e:Ljava/lang/String;

    invoke-static {v3, v5}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v5, v9

    goto :goto_7

    :cond_12
    const-string v7, "response is null"

    .line 136
    invoke-static {v3, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7, v9}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;Z)Z

    .line 139
    :cond_13
    :goto_7
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->i(Lcn/nubia/i/h;)I

    if-eqz v6, :cond_14

    .line 140
    iget-boolean v7, v6, Lcn/nubia/i/k;->h:Z

    if-eqz v7, :cond_14

    iget-boolean v7, v0, Lcn/nubia/i/h$a;->b:Z

    if-eqz v7, :cond_0

    .line 142
    :cond_14
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 144
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/i/i;

    .line 145
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->h(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v5, :cond_16

    .line 147
    invoke-virtual {v8, v9}, Lcn/nubia/i/i;->b(I)V

    .line 148
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 150
    :cond_16
    iget-object v10, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v10}, Lcn/nubia/i/h;->h(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 155
    :cond_17
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;)Lcn/nubia/i/j;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcn/nubia/i/j;->a(Ljava/util/ArrayList;)V

    if-nez v5, :cond_1b

    .line 158
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->d(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 159
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 160
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 163
    :cond_19
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 164
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->f(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/i/i;

    .line 165
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/i/i;->i()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 166
    iget-object v7, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v7}, Lcn/nubia/i/h;->e(Lcn/nubia/i/h;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/i/i;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 172
    :cond_1b
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->a(Lcn/nubia/i/h;)Lcn/nubia/i/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/i/j;->d()V

    .line 173
    iget-boolean v1, v0, Lcn/nubia/i/h$a;->b:Z

    if-nez v1, :cond_1c

    .line 174
    iget-object v1, v0, Lcn/nubia/i/h$a;->a:Lcn/nubia/i/h;

    invoke-static {v1}, Lcn/nubia/i/h;->j(Lcn/nubia/i/h;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/i/h$a;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1d

    .line 178
    invoke-virtual {v6}, Lcn/nubia/i/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method
