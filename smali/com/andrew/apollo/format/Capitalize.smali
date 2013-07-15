.class public Lcom/andrew/apollo/format/Capitalize;
.super Ljava/lang/Object;
.source "Capitalize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static final capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/format/Capitalize;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "delimiters"

    .prologue
    .line 24
    if-nez p1, :cond_1

    const/4 v3, -0x1

    .line 25
    .local v3, delimLen:I
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v3, :cond_2

    .line 39
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 24
    .end local v3           #delimLen:I
    .restart local p0
    :cond_1
    array-length v3, p1

    goto :goto_0

    .line 28
    .restart local v3       #delimLen:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 29
    .local v0, buffer:[C
    const/4 v1, 0x1

    .line 30
    .local v1, capitalizeNext:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 31
    aget-char v2, v0, v4

    .line 32
    .local v2, ch:C
    invoke-static {v2, p1}, Lcom/andrew/apollo/format/Capitalize;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    const/4 v1, 0x1

    .line 30
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 34
    :cond_4
    if-eqz v1, :cond_3

    .line 35
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    aput-char v5, v0, v4

    .line 36
    const/4 v1, 0x0

    goto :goto_3

    .line 39
    .end local v2           #ch:C
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method private static final isDelimiter(C[C)Z
    .locals 5
    .parameter "ch"
    .parameter "delimiters"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 58
    :goto_0
    return v4

    .line 53
    :cond_0
    move-object v0, p1

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 54
    .local v1, delimiter:C
    if-ne p0, v1, :cond_1

    .line 55
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v1           #delimiter:C
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
