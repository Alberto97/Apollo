.class public Lcom/andrew/apollo/lastfm/Caller;
.super Ljava/lang/Object;
.source "Caller.java"


# static fields
.field private static mInstance:Lcom/andrew/apollo/lastfm/Caller;


# instance fields
.field private final apiRootUrl:Ljava/lang/String;

.field private lastResult:Lcom/andrew/apollo/lastfm/Result;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/lastfm/Caller;->mInstance:Lcom/andrew/apollo/lastfm/Caller;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "http://ws.audioscrobbler.com/2.0/"

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/Caller;->apiRootUrl:Ljava/lang/String;

    .line 76
    const-string v0, "Apollo"

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/Caller;->userAgent:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private varargs buildPostBody(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "method"
    .parameter
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x3d

    const/16 v9, 0x26

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v8, "method="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 257
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 258
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/andrew/apollo/lastfm/StringUtilities;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    array-length v8, p3

    if-lez v8, :cond_0

    .line 262
    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .line 266
    .local v2, count:I
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v7, v0, v4

    .line 267
    .local v7, string:Ljava/lang/String;
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_4

    .end local v7           #string:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    array-length v8, p3

    if-eq v2, v8, :cond_3

    .line 270
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_5

    .line 271
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 267
    .restart local v7       #string:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/andrew/apollo/lastfm/StringUtilities;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 273
    .end local v7           #string:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 277
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private createResultFromInputStream(Ljava/io/InputStream;)Lcom/andrew/apollo/lastfm/Result;
    .locals 11
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/Caller;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    new-instance v8, Lorg/xml/sax/InputSource;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, p1, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 218
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 219
    .local v4, root:Lorg/w3c/dom/Element;
    const-string v7, "status"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, statusString:Ljava/lang/String;
    const-string v7, "ok"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v5, Lcom/andrew/apollo/lastfm/Result$Status;->OK:Lcom/andrew/apollo/lastfm/Result$Status;

    .line 221
    .local v5, status:Lcom/andrew/apollo/lastfm/Result$Status;
    :goto_0
    sget-object v7, Lcom/andrew/apollo/lastfm/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/Result$Status;

    if-ne v5, v7, :cond_1

    .line 222
    const-string v7, "error"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 223
    .local v2, errorElement:Lorg/w3c/dom/Element;
    const-string v7, "code"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, errorCode:I
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, message:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/andrew/apollo/lastfm/Result;->createRestErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v7

    .line 227
    .end local v1           #errorCode:I
    .end local v2           #errorElement:Lorg/w3c/dom/Element;
    .end local v3           #message:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 220
    .end local v5           #status:Lcom/andrew/apollo/lastfm/Result$Status;
    :cond_0
    sget-object v5, Lcom/andrew/apollo/lastfm/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/Result$Status;

    goto :goto_0

    .line 227
    .restart local v5       #status:Lcom/andrew/apollo/lastfm/Result$Status;
    :cond_1
    invoke-static {v0}, Lcom/andrew/apollo/lastfm/Result;->createOkResult(Lorg/w3c/dom/Document;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v7

    goto :goto_1
.end method

.method private getInputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 198
    .local v0, responseCode:I
    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 201
    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/andrew/apollo/lastfm/Caller;
    .locals 3
    .parameter "context"

    .prologue
    .line 91
    const-class v1, Lcom/andrew/apollo/lastfm/Caller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/lastfm/Caller;->mInstance:Lcom/andrew/apollo/lastfm/Caller;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/andrew/apollo/lastfm/Caller;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/lastfm/Caller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/Caller;->mInstance:Lcom/andrew/apollo/lastfm/Caller;

    .line 94
    :cond_0
    sget-object v0, Lcom/andrew/apollo/lastfm/Caller;->mInstance:Lcom/andrew/apollo/lastfm/Caller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 237
    .local v0, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 238
    .end local v0           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private openPostConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 6
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 177
    const-string v4, "http://ws.audioscrobbler.com/2.0/"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/lastfm/Caller;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 178
    .local v2, urlConnection:Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 180
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 181
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 182
    .local v0, outputStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 183
    .local v3, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v4}, Lcom/andrew/apollo/lastfm/Caller;->buildPostBody(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, post:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 186
    return-object v2
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/Result;
    .locals 6
    .parameter "method"
    .parameter "apiKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/andrew/apollo/lastfm/Result;"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1, p3}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    .line 123
    .end local p3           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, inputStream:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 128
    const-string v4, "api_key"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/andrew/apollo/lastfm/Caller;->openPostConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 131
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    invoke-direct {p0, v3}, Lcom/andrew/apollo/lastfm/Caller;->getInputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 134
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/andrew/apollo/lastfm/Result;->createHttpErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v4

    iput-object v4, p0, Lcom/andrew/apollo/lastfm/Caller;->lastResult:Lcom/andrew/apollo/lastfm/Result;

    .line 136
    iget-object v2, p0, Lcom/andrew/apollo/lastfm/Caller;->lastResult:Lcom/andrew/apollo/lastfm/Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v3           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v4

    .line 143
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/andrew/apollo/lastfm/Caller;->createResultFromInputStream(Ljava/io/InputStream;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v2

    .line 144
    .local v2, result:Lcom/andrew/apollo/lastfm/Result;
    iput-object v2, p0, Lcom/andrew/apollo/lastfm/Caller;->lastResult:Lcom/andrew/apollo/lastfm/Result;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 146
    .end local v2           #result:Lcom/andrew/apollo/lastfm/Result;
    :catch_1
    move-exception v4

    .line 149
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public varargs call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Result;
    .locals 1
    .parameter "method"
    .parameter "apiKey"
    .parameter "params"

    .prologue
    .line 105
    invoke-static {p3}, Lcom/andrew/apollo/lastfm/StringUtilities;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/andrew/apollo/lastfm/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, u:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 164
    .local v1, urlConnection:Ljava/net/HttpURLConnection;
    const-string v2, "User-Agent"

    const-string v3, "Apollo"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 166
    return-object v1
.end method
