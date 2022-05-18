.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:[I

.field final d:[I

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:I

.field final i:I

.field final j:Ljava/lang/CharSequence;

.field final k:I

.field final l:Ljava/lang/CharSequence;

.field final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroidx/fragment/app/b$1;

    invoke-direct {v0}, Landroidx/fragment/app/b$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->a:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->c:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->d:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->f:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    .line 95
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/b;->o:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 49
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->a:[I

    .line 51
    iget-boolean v1, p1, Landroidx/fragment/app/a;->k:Z

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->c:[I

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->d:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v3, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/n$a;

    .line 61
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/n$a;->a:I

    aput v6, v4, v2

    .line 62
    iget-object v2, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/n$a;->b:Landroidx/fragment/app/c;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/n$a;->b:Landroidx/fragment/app/c;

    iget-object v4, v4, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/n$a;->c:I

    aput v6, v2, v5

    .line 64
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/n$a;->d:I

    aput v6, v2, v4

    .line 65
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/n$a;->e:I

    aput v6, v2, v5

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/n$a;->f:I

    aput v6, v2, v4

    .line 67
    iget-object v2, p0, Landroidx/fragment/app/b;->c:[I

    iget-object v4, v3, Landroidx/fragment/app/n$a;->g:Landroidx/lifecycle/e$b;

    invoke-virtual {v4}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v4

    aput v4, v2, v1

    .line 68
    iget-object v2, p0, Landroidx/fragment/app/b;->d:[I

    iget-object v3, v3, Landroidx/fragment/app/n$a;->h:Landroidx/lifecycle/e$b;

    invoke-virtual {v3}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p1, Landroidx/fragment/app/a;->i:I

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 71
    iget v0, p1, Landroidx/fragment/app/a;->j:I

    iput v0, p0, Landroidx/fragment/app/b;->f:I

    .line 72
    iget-object v0, p1, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    .line 73
    iget v0, p1, Landroidx/fragment/app/a;->c:I

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 74
    iget v0, p1, Landroidx/fragment/app/a;->n:I

    iput v0, p0, Landroidx/fragment/app/b;->i:I

    .line 75
    iget-object v0, p1, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Landroidx/fragment/app/a;->p:I

    iput v0, p0, Landroidx/fragment/app/b;->k:I

    .line 77
    iget-object v0, p1, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    .line 80
    iget-boolean p1, p1, Landroidx/fragment/app/a;->t:Z

    iput-boolean p1, p0, Landroidx/fragment/app/b;->o:Z

    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroidx/fragment/app/j;)Landroidx/fragment/app/a;
    .locals 6

    .line 102
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j;)V

    const/4 v1, 0x0

    move v2, v1

    .line 105
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/b;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 106
    new-instance v3, Landroidx/fragment/app/n$a;

    invoke-direct {v3}, Landroidx/fragment/app/n$a;-><init>()V

    .line 107
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroidx/fragment/app/n$a;->a:I

    .line 108
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    iget-object v4, p1, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    .line 113
    iput-object v1, v3, Landroidx/fragment/app/n$a;->b:Landroidx/fragment/app/c;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 115
    iput-object v1, v3, Landroidx/fragment/app/n$a;->b:Landroidx/fragment/app/c;

    .line 117
    :goto_1
    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/b;->c:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Landroidx/fragment/app/n$a;->g:Landroidx/lifecycle/e$b;

    .line 118
    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/b;->d:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Landroidx/fragment/app/n$a;->h:Landroidx/lifecycle/e$b;

    .line 119
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/n$a;->c:I

    .line 120
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/n$a;->d:I

    .line 121
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/n$a;->e:I

    .line 122
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/n$a;->f:I

    .line 123
    iget v1, v3, Landroidx/fragment/app/n$a;->c:I

    iput v1, v0, Landroidx/fragment/app/a;->e:I

    .line 124
    iget v1, v3, Landroidx/fragment/app/n$a;->d:I

    iput v1, v0, Landroidx/fragment/app/a;->f:I

    .line 125
    iget v1, v3, Landroidx/fragment/app/n$a;->e:I

    iput v1, v0, Landroidx/fragment/app/a;->g:I

    .line 126
    iget v1, v3, Landroidx/fragment/app/n$a;->f:I

    iput v1, v0, Landroidx/fragment/app/a;->h:I

    .line 127
    invoke-virtual {v0, v3}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/n$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 130
    :cond_2
    iget p1, p0, Landroidx/fragment/app/b;->e:I

    iput p1, v0, Landroidx/fragment/app/a;->i:I

    .line 131
    iget p1, p0, Landroidx/fragment/app/b;->f:I

    iput p1, v0, Landroidx/fragment/app/a;->j:I

    .line 132
    iget-object p1, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    iput-object p1, v0, Landroidx/fragment/app/a;->m:Ljava/lang/String;

    .line 133
    iget p1, p0, Landroidx/fragment/app/b;->h:I

    iput p1, v0, Landroidx/fragment/app/a;->c:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, v0, Landroidx/fragment/app/a;->k:Z

    .line 135
    iget v1, p0, Landroidx/fragment/app/b;->i:I

    iput v1, v0, Landroidx/fragment/app/a;->n:I

    .line 136
    iget-object v1, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    .line 137
    iget v1, p0, Landroidx/fragment/app/b;->k:I

    iput v1, v0, Landroidx/fragment/app/a;->p:I

    .line 138
    iget-object v1, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    .line 139
    iget-object v1, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 140
    iget-object v1, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 141
    iget-boolean v1, p0, Landroidx/fragment/app/b;->o:Z

    iput-boolean v1, v0, Landroidx/fragment/app/a;->t:Z

    .line 142
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->a(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    iget-object p2, p0, Landroidx/fragment/app/b;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object p2, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Landroidx/fragment/app/b;->c:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Landroidx/fragment/app/b;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Landroidx/fragment/app/b;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Landroidx/fragment/app/b;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object p2, p0, Landroidx/fragment/app/b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget p2, p0, Landroidx/fragment/app/b;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Landroidx/fragment/app/b;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Landroidx/fragment/app/b;->j:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 163
    iget p2, p0, Landroidx/fragment/app/b;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object p2, p0, Landroidx/fragment/app/b;->l:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 165
    iget-object p2, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-object p2, p0, Landroidx/fragment/app/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget-boolean p2, p0, Landroidx/fragment/app/b;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
