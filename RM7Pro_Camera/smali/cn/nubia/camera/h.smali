.class public Lcn/nubia/camera/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ac/b;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/camera/ac/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/h;->a:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/h;->a:Ljava/util/HashMap;

    return-void
.end method

.method private b(Lcn/nubia/camera/af/a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/b;
    .locals 3

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/camera/h;->b(Lcn/nubia/camera/af/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/h;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/h;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ac/b;

    return-object p1

    .line 104
    :cond_1
    sget-object v0, Lcn/nubia/camera/h$1;->a:[I

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 216
    :pswitch_0
    new-instance v1, Lcn/nubia/camera/aimoon/c;

    invoke-direct {v1}, Lcn/nubia/camera/aimoon/c;-><init>()V

    goto/16 :goto_0

    .line 213
    :pswitch_1
    new-instance v1, Lcn/nubia/camera/at/c;

    invoke-direct {v1}, Lcn/nubia/camera/at/c;-><init>()V

    goto/16 :goto_0

    .line 209
    :pswitch_2
    new-instance v1, Lcn/nubia/camera/multiRecord/i;

    invoke-direct {v1}, Lcn/nubia/camera/multiRecord/i;-><init>()V

    goto/16 :goto_0

    .line 206
    :pswitch_3
    new-instance v1, Lcn/nubia/camera/bb/k;

    invoke-direct {v1}, Lcn/nubia/camera/bb/k;-><init>()V

    goto/16 :goto_0

    .line 203
    :pswitch_4
    new-instance v1, Lcn/nubia/camera/hitchcock/d;

    invoke-direct {v1}, Lcn/nubia/camera/hitchcock/d;-><init>()V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    new-instance v1, Lcn/nubia/camera/bc/b;

    invoke-direct {v1}, Lcn/nubia/camera/bc/b;-><init>()V

    goto/16 :goto_0

    .line 197
    :pswitch_6
    new-instance v1, Lcn/nubia/camera/r/f;

    invoke-direct {v1}, Lcn/nubia/camera/r/f;-><init>()V

    goto/16 :goto_0

    .line 194
    :pswitch_7
    new-instance v1, Lcn/nubia/camera/elefnovideo/d;

    invoke-direct {v1}, Lcn/nubia/camera/elefnovideo/d;-><init>()V

    goto/16 :goto_0

    .line 191
    :pswitch_8
    new-instance v1, Lcn/nubia/camera/dualcameracalibration/g;

    invoke-direct {v1}, Lcn/nubia/camera/dualcameracalibration/g;-><init>()V

    goto/16 :goto_0

    .line 188
    :pswitch_9
    new-instance v1, Lcn/nubia/camera/x/b;

    invoke-direct {v1}, Lcn/nubia/camera/x/b;-><init>()V

    goto/16 :goto_0

    .line 185
    :pswitch_a
    new-instance v1, Lcn/nubia/camera/u/b;

    invoke-direct {v1}, Lcn/nubia/camera/u/b;-><init>()V

    goto/16 :goto_0

    .line 182
    :pswitch_b
    new-instance v1, Lcn/nubia/camera/ai/b;

    invoke-direct {v1}, Lcn/nubia/camera/ai/b;-><init>()V

    goto/16 :goto_0

    .line 179
    :pswitch_c
    new-instance v1, Lcn/nubia/camera/b/c;

    invoke-direct {v1}, Lcn/nubia/camera/b/c;-><init>()V

    goto/16 :goto_0

    .line 176
    :pswitch_d
    new-instance v1, Lcn/nubia/camera/prisma/d;

    invoke-direct {v1}, Lcn/nubia/camera/prisma/d;-><init>()V

    goto/16 :goto_0

    .line 173
    :pswitch_e
    new-instance v1, Lcn/nubia/camera/dualcameracalibration/a;

    invoke-direct {v1}, Lcn/nubia/camera/dualcameracalibration/a;-><init>()V

    goto/16 :goto_0

    .line 170
    :pswitch_f
    new-instance v1, Lcn/nubia/camera/j;

    invoke-direct {v1}, Lcn/nubia/camera/j;-><init>()V

    goto/16 :goto_0

    .line 167
    :pswitch_10
    new-instance v1, Lcn/nubia/camera/o/d;

    invoke-direct {v1}, Lcn/nubia/camera/o/d;-><init>()V

    goto/16 :goto_0

    .line 164
    :pswitch_11
    new-instance v1, Lcn/nubia/camera/ax/h;

    invoke-direct {v1}, Lcn/nubia/camera/ax/h;-><init>()V

    goto/16 :goto_0

    .line 161
    :pswitch_12
    new-instance v1, Lcn/nubia/camera/ax/e;

    invoke-direct {v1}, Lcn/nubia/camera/ax/e;-><init>()V

    goto/16 :goto_0

    .line 158
    :pswitch_13
    new-instance v1, Lcn/nubia/camera/lightpainting/c;

    invoke-direct {v1}, Lcn/nubia/camera/lightpainting/c;-><init>()V

    goto/16 :goto_0

    .line 155
    :pswitch_14
    new-instance v1, Lcn/nubia/camera/bd/c;

    invoke-direct {v1}, Lcn/nubia/camera/bd/c;-><init>()V

    goto/16 :goto_0

    .line 152
    :pswitch_15
    new-instance v1, Lcn/nubia/camera/y/c;

    invoke-direct {v1}, Lcn/nubia/camera/y/c;-><init>()V

    goto :goto_0

    .line 149
    :pswitch_16
    new-instance v1, Lcn/nubia/camera/panorama/l;

    invoke-direct {v1}, Lcn/nubia/camera/panorama/l;-><init>()V

    goto :goto_0

    .line 146
    :pswitch_17
    new-instance v1, Lcn/nubia/camera/au/c;

    invoke-direct {v1}, Lcn/nubia/camera/au/c;-><init>()V

    goto :goto_0

    .line 142
    :pswitch_18
    new-instance v1, Lcn/nubia/camera/pretty/f;

    invoke-direct {v1}, Lcn/nubia/camera/pretty/f;-><init>()V

    goto :goto_0

    .line 139
    :pswitch_19
    new-instance v1, Lcn/nubia/camera/ag/e;

    invoke-direct {v1}, Lcn/nubia/camera/ag/e;-><init>()V

    goto :goto_0

    .line 136
    :pswitch_1a
    new-instance v1, Lcn/nubia/camera/ar/b;

    invoke-direct {v1}, Lcn/nubia/camera/ar/b;-><init>()V

    goto :goto_0

    .line 133
    :pswitch_1b
    new-instance v1, Lcn/nubia/camera/ay/c;

    invoke-direct {v1}, Lcn/nubia/camera/ay/c;-><init>()V

    goto :goto_0

    .line 130
    :pswitch_1c
    new-instance v1, Lcn/nubia/camera/az/b;

    invoke-direct {v1}, Lcn/nubia/camera/az/b;-><init>()V

    goto :goto_0

    .line 127
    :pswitch_1d
    new-instance v1, Lcn/nubia/camera/l/b;

    invoke-direct {v1}, Lcn/nubia/camera/l/b;-><init>()V

    goto :goto_0

    .line 124
    :pswitch_1e
    new-instance v1, Lcn/nubia/camera/clone/f;

    invoke-direct {v1}, Lcn/nubia/camera/clone/f;-><init>()V

    goto :goto_0

    .line 121
    :pswitch_1f
    new-instance v1, Lcn/nubia/camera/bb/m;

    invoke-direct {v1}, Lcn/nubia/camera/bb/m;-><init>()V

    goto :goto_0

    .line 118
    :pswitch_20
    new-instance v1, Lcn/nubia/camera/videomaker/h;

    invoke-direct {v1}, Lcn/nubia/camera/videomaker/h;-><init>()V

    goto :goto_0

    .line 115
    :pswitch_21
    new-instance v1, Lcn/nubia/camera/ah/b;

    invoke-direct {v1}, Lcn/nubia/camera/ah/b;-><init>()V

    goto :goto_0

    .line 112
    :pswitch_22
    new-instance v1, Lcn/nubia/camera/bb/x;

    invoke-direct {v1}, Lcn/nubia/camera/bb/x;-><init>()V

    goto :goto_0

    .line 109
    :pswitch_23
    new-instance v1, Lcn/nubia/camera/ao/i;

    invoke-direct {v1}, Lcn/nubia/camera/ao/i;-><init>()V

    goto :goto_0

    .line 106
    :pswitch_24
    new-instance v1, Lcn/nubia/camera/aj/d;

    invoke-direct {v1}, Lcn/nubia/camera/aj/d;-><init>()V

    .line 221
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/h;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;
    .locals 1

    .line 254
    invoke-direct {p0, p4}, Lcn/nubia/camera/h;->c(Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/camera/ac/b;->a(Landroid/app/Activity;Lcom/android/preference/c;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/k/x;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraMember = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemberConfigGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, p2}, Lcn/nubia/camera/h;->c(Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/q/i;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f120001

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/af/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/af/b;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Lcn/nubia/camera/h;->c(Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0, p1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;
    .locals 1

    .line 82
    invoke-direct {p0, p2}, Lcn/nubia/camera/h;->c(Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/ac/b;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
