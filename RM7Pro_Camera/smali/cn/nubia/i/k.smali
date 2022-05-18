.class Lcn/nubia/i/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/k$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/k$a;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;II)Lcn/nubia/i/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lcn/nubia/i/k;"
        }
    .end annotation

    const-string v0, "summary"

    const-string v1, "id"

    .line 111
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance p0, Lcn/nubia/i/k;

    invoke-direct {p0}, Lcn/nubia/i/k;-><init>()V

    .line 114
    iput p3, p0, Lcn/nubia/i/k;->a:I

    .line 115
    iput p2, p0, Lcn/nubia/i/k;->b:I

    const-string p3, "total"

    .line 117
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/i/k;->c:I

    const-string p3, "code"

    .line 118
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/i/k;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "PhotoFileter"

    if-eqz p3, :cond_0

    .line 120
    :try_start_1
    iput-boolean v3, p0, Lcn/nubia/i/k;->h:Z

    const-string p1, "message"

    .line 121
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/i/k;->e:Ljava/lang/String;

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcn/nubia/i/k;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mMsg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/i/k;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string p3, "data"

    .line 127
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 128
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    iput-boolean p2, p0, Lcn/nubia/i/k;->h:Z

    .line 129
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/i/k;->f:Ljava/util/ArrayList;

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/i/k;->g:Ljava/util/ArrayList;

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataArray.length: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "; photoFileter.mHasRemainingData: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v2, p0, Lcn/nubia/i/k;->h:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v3, p2, :cond_7

    .line 133
    new-instance p2, Lcn/nubia/i/k$a;

    invoke-direct {p2, p0}, Lcn/nubia/i/k$a;-><init>(Lcn/nubia/i/k;)V

    .line 134
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 135
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p2, Lcn/nubia/i/k$a;->e:I

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data.mId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcn/nubia/i/k$a;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "jinrong"

    if-eqz p1, :cond_2

    .line 138
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentPrismaIds.contains: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcn/nubia/i/k$a;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v6, "currentPrismaIds null"

    .line 140
    invoke-static {v5, v6}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_2
    iget-object v5, p0, Lcn/nubia/i/k;->g:Ljava/util/ArrayList;

    iget v6, p2, Lcn/nubia/i/k$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 144
    iget-object v5, p0, Lcn/nubia/i/k;->g:Ljava/util/ArrayList;

    iget v6, p2, Lcn/nubia/i/k$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 146
    iget v5, p2, Lcn/nubia/i/k$a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_5

    .line 149
    :cond_4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcn/nubia/i/k$a;->a:Ljava/lang/String;

    const-string v5, "filterNameEn"

    .line 150
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcn/nubia/i/k$a;->b:Ljava/lang/String;

    const-string v5, "filterName"

    .line 151
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcn/nubia/i/k$a;->c:Ljava/lang/String;

    const-string v5, "description"

    .line 152
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcn/nubia/i/k$a;->d:Ljava/lang/String;

    .line 155
    new-instance v5, Lcn/nubia/i/k$a$b;

    invoke-direct {v5, p2}, Lcn/nubia/i/k$a$b;-><init>(Lcn/nubia/i/k$a;)V

    iput-object v5, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v5, "photoFilterItem"

    .line 156
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "state"

    if-eqz v5, :cond_5

    .line 158
    :try_start_3
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "fileUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcn/nubia/i/k$a$b;->a:Ljava/lang/String;

    .line 159
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "versionName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcn/nubia/i/k$a$b;->b:Ljava/lang/String;

    .line 160
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "createTime"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcn/nubia/i/k$a$b;->c:I

    .line 161
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "updateDescription"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcn/nubia/i/k$a$b;->d:Ljava/lang/String;

    .line 162
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "icon"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcn/nubia/i/k$a$b;->e:Ljava/lang/String;

    .line 163
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "versionCode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcn/nubia/i/k$a$b;->f:I

    .line 164
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcn/nubia/i/k$a$b;->g:I

    .line 165
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcn/nubia/i/k$a$b;->h:I

    .line 166
    iget-object v7, p2, Lcn/nubia/i/k$a;->f:Lcn/nubia/i/k$a$b;

    const-string v8, "fileSize"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcn/nubia/i/k$a$b;->i:I

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photoFilterItem is success "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p2, Lcn/nubia/i/k$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 169
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photoFilterItem is null "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p2, Lcn/nubia/i/k$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_3
    new-instance v5, Lcn/nubia/i/k$a$a;

    invoke-direct {v5, p2}, Lcn/nubia/i/k$a$a;-><init>(Lcn/nubia/i/k$a;)V

    iput-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    const-string v5, "category"

    .line 173
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 175
    iget-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/i/k$a$a;->a:Ljava/lang/String;

    .line 176
    iget-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    const-string v7, "categoryName"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/i/k$a$a;->b:Ljava/lang/String;

    .line 177
    iget-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    const-string v7, "sortIndex"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcn/nubia/i/k$a$a;->c:I

    .line 178
    iget-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcn/nubia/i/k$a$a;->d:I

    .line 179
    iget-object v5, p2, Lcn/nubia/i/k$a;->g:Lcn/nubia/i/k$a$a;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcn/nubia/i/k$a$a;->e:I

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category is success "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Lcn/nubia/i/k$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 182
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category is null "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Lcn/nubia/i/k$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_4
    iget-object v2, p0, Lcn/nubia/i/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    return-object p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoFileter{total ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/i/k;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/i/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/i/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
